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
}

startup
{
    vars.previousTime = 0.0f;

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
}

init
{
    int moduleSize = modules.First().ModuleMemorySize;
    switch (moduleSize)
    {
        case 65032192:
            version = "Demo2 v2";
            break;
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
