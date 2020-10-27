state("Ghostrunner-Win64-Shipping", "steam1")
{
    float preciseTime : 0x042E1678, 0x1A8, 0x284;
    float levelTime : 0x0455C860, 0x128, 0x38C;
    float xVel : 0x042E16B8, 0x30, 0x288, 0xC4;
    float yVel : 0x042E16B8, 0x30, 0x288, 0xC8;
}

state("Ghostrunner-Win64-Shipping", "gog1")
{
    float preciseTime : 0x0430CC10, 0x1A8, 0x284;
    float levelTime : 0x04587F20, 0x128, 0x38C;
    float xVel : 0x0430CC48, 0x30, 0x288, 0xC4;
    float yVel : 0x0430CC48, 0x30, 0x288, 0xC8;
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

    vars.SetTextComponent = (Action<string, string>)((id, text) =>
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
        case 78057472:
            version = "steam1";
            break;
        case 78036992:
            version = "gog1";
            break;
        default:
            version = "Unsupported - " + moduleSize.ToString();
            MessageBox.Show("This game version is currently not supported.", "LiveSplit Auto Splitter - Unsupported Game Version");
            break;
    }
}

isLoading{ return true; }

update
{
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
    return (old.levelTime != current.levelTime && current.levelTime == current.preciseTime && current.preciseTime != 0);
}
