state("Ghostrunner-Win64-Shipping", "Demo2 v1")
{
    float preciseTime : 0x037F8E28, 0x178, 0x27C;
    float levelTime : 0x0397E898, 0x128, 0x384;
    string250 map : 0x037F8E28, 0x30, 0xF8, 0x0;
}

state("Ghostrunner-Win64-Shipping", "Demo2 v2")
{
    float preciseTime : 0x037F8F28, 0x178, 0x27C;
    float levelTime : 0x0397E958, 0x128, 0x384;
    string250 map : 0x037F8F28, 0x30, 0xF8, 0x0;
}

state("Ghostrunner-Win64-Shipping", "Demo2 v3")
{
    float preciseTime : 0x037F6F28, 0x178, 0x27C;
    float levelTime : 0x0397C958, 0x128, 0x384;
    string250 map : 0x037F6F28, 0x30, 0xF8, 0x0;
    float xVel : 0x037F59B0, 0x30, 0x280, 0xC4;
    float yVel : 0x037F59B0, 0x30, 0x280, 0xC8;
}

startup
{
    vars.previousTime = 0.0f;

    settings.Add("speedometer", false, "Show Speedometer");
    settings.Add("speedround", false, "Round to whole number", "speedometer");
    

    if (timer.CurrentTimingMethod == TimingMethod.RealTime)
    {
        var timingMessage = MessageBox.Show(
            "This game uses Game Time (IGT) as the main timing method.\n"
            + "LiveSplit is currently set to show Real Time (RTA).\n"
            + "Would you like to set the timing method to Game Time?",
            "Ghostrunner Demo | LiveSplit",
            MessageBoxButtons.YesNo, MessageBoxIcon.Question
        );

        if (timingMessage == DialogResult.Yes)
        {
            timer.CurrentTimingMethod = TimingMethod.GameTime;
        }
    }

    vars.SetTextComponent = (Action<string, string>)((id, text) => //Logic to drive text components from ASL
	{
        var textSettings = timer.Layout.Components.Where(x => x.GetType().Name == "TextComponent").Select(x => x.GetType().GetProperty("Settings").GetValue(x, null));
        var textSetting = textSettings.FirstOrDefault(x => (x.GetType().GetProperty("Text1").GetValue(x, null) as string) == id);
        if (textSetting == null)
        {
            var textComponentAssembly = Assembly.LoadFrom("Components\\LiveSplit.Text.dll");
            var textComponent = Activator.CreateInstance(textComponentAssembly.GetType("LiveSplit.UI.Components.TextComponent"), timer);
            timer.Layout.LayoutComponents.Add(new LiveSplit.UI.Components.LayoutComponent("LiveSplit.Text.dll", textComponent as LiveSplit.UI.Components.IComponent));

            textSetting = textComponent.GetType().GetProperty("Settings", BindingFlags.Instance | BindingFlags.Public).GetValue(textComponent, null);
            textSetting.GetType().GetProperty("Text1").SetValue(textSetting, id);
        }

        if (textSetting != null)
            textSetting.GetType().GetProperty("Text2").SetValue(textSetting, text);
	});

    vars.UpdateSpeedometer = (Action<float, float, bool>)((x, y, round) =>
    {
        double hvel = Math.Floor(Math.Sqrt(x*x + y*y)+0.5);
        
        if(round)
            vars.SetTextComponent("Speed", Math.Floor(hvel/100).ToString("") + " m/s");
        else
            vars.SetTextComponent("Speed", (hvel/100).ToString("0.00") + " m/s");
    });
}

init
{
    int moduleSize = modules.First().ModuleMemorySize;
    switch (moduleSize)
    {
        case 65032192:
            version = "Demo2 v2";
            break;
        case 64815104:
        case 65024000:
            version = "Demo2 v3";
            break;
        default:
            version = "Unsupported - " + moduleSize.ToString();
            // Display popup if version is incorrect
            MessageBox.Show("This game version is currently not supported.", "LiveSplit Auto Splitter - Unsupported Game Version");
            break;
    }
}

isLoading
{
    return true;
}

update
{
    // Disable the autosplitter if the version is incorrect
    if (version.Contains("Unsupported"))
        return false;

    if(timer.CurrentPhase == TimerPhase.Running)
    {
        if(current.preciseTime < old.preciseTime)
            vars.previousTime += old.preciseTime;
    }
    else
    {
        vars.previousTime = 0.0f;
    }

    if(settings["speedometer"])
        vars.UpdateSpeedometer(current.xVel, current.yVel, settings["speedround"]);
}

gameTime
{
    return TimeSpan.FromSeconds(current.preciseTime + vars.previousTime);
}

start
{
    return (old.preciseTime == 0 && current.preciseTime > 0);
}

split
{
    if(old.levelTime != current.levelTime && current.levelTime == current.preciseTime && current.preciseTime != 0 && current.levelTime != 0)
        return true;
}

reset
{
    return current.map == "/Game/Levels/MainMenu/MainMenu";
}
