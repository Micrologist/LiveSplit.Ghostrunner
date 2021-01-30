state("Ghostrunner-Win64-Shipping", "steam1")
{
    float preciseTime : 0x042E1678, 0x1A8, 0x284;
    float levelTime : 0x0455C860, 0x128, 0x38C;
    float xVel : 0x042E16B8, 0x30, 0x288, 0xC4;
    float yVel : 0x042E16B8, 0x30, 0x288, 0xC8;
    bool loading : 0x04417978, 0x1E8;
    string250 map : 0x042E1678, 0x30, 0xF8, 0x0;
    bool leaderboardShown : 0x042E1AC8, 0x80;
    int deaths : 0x042E1678, 0x1A8, 0x28C;
}

state("Ghostrunner-Win64-Shipping", "steam3")
{
    float preciseTime : 0x042E78D0, 0x1A8, 0x284;
    float levelTime : 0x04562C20, 0x128, 0x38C;
    float xVel : 0x042E78F8, 0x30, 0x288, 0xC4;
    float yVel : 0x042E78F8, 0x30, 0x288, 0xC8;
    bool loading : 0x0441DD38, 0x1E8;
    string250 map : 0x042E78D0, 0x30, 0xF8, 0x0;
    bool leaderboardShown : 0x042E7D08, 0x80;
    int deaths : 0x042E78D0, 0x1A8, 0x28C;
}

state("Ghostrunner-Win64-Shipping", "steam5")
{
    float preciseTime : 0x04328548, 0x1A8, 0x284;
    float levelTime : 0x045A3C20, 0x128, 0x38C;
    float xVel : 0x04328538, 0x30, 0x288, 0xC4;
    float yVel : 0x04328538, 0x30, 0x288, 0xC8;
    bool loading : 0x0445ED38, 0x1E8;
    string250 map : 0x04328548, 0x30, 0xF8, 0x0;
    bool leaderboardShown : 0x04328580, 0x80;
    int deaths : 0x04328548, 0x1A8, 0x28C;
	int killpercp : 0x04328538, 0x30, 0xA4C;
}

state("Ghostrunner-Win64-Shipping", "gog1")
{
    float preciseTime : 0x0430CC10, 0x1A8, 0x284;
    float levelTime : 0x04587F20, 0x128, 0x38C;
    float xVel : 0x0430CC48, 0x30, 0x288, 0xC4;
    float yVel : 0x0430CC48, 0x30, 0x288, 0xC8;
    bool loading : 0x04443038, 0x1E8;
    string250 map : 0x0430CC10, 0x30, 0xF8, 0x0;
    bool leaderboardShown : 0x0430D058, 0x80;
    int deaths : 0x0430CC10, 0x1A8, 0x28C;
}

state("Ghostrunner-Win64-Shipping", "gog5")
{
    float preciseTime : 0x04328548, 0x1A8, 0x284;
    float levelTime : 0x045A3C20, 0x128, 0x38C;
    float xVel : 0x04328538, 0x30, 0x288, 0xC4;
    float yVel : 0x04328538, 0x30, 0x288, 0xC8;
    bool loading : 0x0445ED38, 0x1E8;
    string250 map : 0x04328548, 0x30, 0xF8, 0x0;
    bool leaderboardShown : 0x04328580, 0x80;
    int deaths : 0x04328548, 0x1A8, 0x28C;
	int killpercp : 0x04328538, 0x30, 0xA4C;
}

state("Ghostrunner-Win64-Shipping", "egs1")
{
    float preciseTime : 0x042EA098, 0x1A8, 0x284;
    float levelTime : 0x04565320, 0x128, 0x38C;
    float xVel : 0x042EA0D0, 0x30, 0x288, 0xC4;
    float yVel : 0x042EA0D0, 0x30, 0x288, 0xC8;
    bool loading : 0x04420438, 0x1E8;
    string250 map : 0x042EA098, 0x30, 0xF8, 0x0;
    bool leaderboardShown : 0x042EA108, 0x80;
    int deaths : 0x042EA098, 0x1A8, 0x28C;
}

state("Ghostrunner-Win64-Shipping", "egs2")
{
    float preciseTime : 0x042E9098, 0x1A8, 0x284;
    float levelTime : 0x04564320, 0x128, 0x38C;
    float xVel : 0x042E90D0, 0x30, 0x288, 0xC4;
    float yVel : 0x042E90D0, 0x30, 0x288, 0xC8;
    bool loading : 0x0441F438, 0x1E8;
    string250 map : 0x042E9098, 0x30, 0xF8, 0x0;
    bool leaderboardShown : 0x042E9108, 0x80;
    int deaths : 0x042E9098, 0x1A8, 0x28C;
}

state("Ghostrunner-Win64-Shipping", "egs3")
{
    float preciseTime : 0x042F02E8, 0x1A8, 0x284;
    float levelTime : 0x0456B6A0, 0x128, 0x38C;
    float xVel : 0x042F0310, 0x30, 0x288, 0xC4;
    float yVel : 0x042F0310, 0x30, 0x288, 0xC8;
    bool loading : 0x044267B8, 0x1E8;
    string250 map : 0x042F02E8, 0x30, 0xF8, 0x0;
    bool leaderboardShown : 0x042F0720, 0x80;
    int deaths : 0x042F02E8, 0x1A8, 0x28C;
}

startup
{	vars.endLevelPause = false;
    vars.deathCount = 0;
	vars.defaultcounter = false;
	vars.bosskilled = false;
	vars.killsoffset = 0;
	vars.section = 0;
	vars.cpx=0.0;
	vars.cpy=0.0;
	vars.reachEOL = false;
	vars.lstart = false;
	vars.nocp = 0;
    vars.fulllvlkills = 0;
	vars.lvlkills = 0;
	vars.killCount = 0;
	vars.killsave = 0;
	vars.watchers = new MemoryWatcherList();
	vars.sections = new int[32, 3] { {0, 505, 0}, {0, 13, 0}, {0, 9, 0}, {0, 0, 0}, {0, 27, 0}, {0, 0, 0}, {0, 10, 0},
	{0, 22, 0}, {0, 21, 0}, {0, 50, 0}, {0, 0, 0}, {0, 2, 0}, {0, 38, 0},
	{0, 0, 0}, {0, 7, 0}, {0, 20, 0}, {0, 1, 0}, {0, 34, 0}, {0, 60, 0},
	{0, 0, 0}, {0, 17, 0}, {0, 1, 0}, {0, 6, 0}, {0, 0, 0}, {0, 39, 0}, {0, 36, 0},
	{0, 0, 0}, {0, 0, 0}, {0, 30, 0}, {0, 61, 0}, {0, 1, 0}, {0, 0, 0}};
	vars.sectionshard = new int[19, 3] { {0, 717, 0}, {0, 26, 0}, 
	{0, 13, 0},	{0, 60, 0}, {0, 38, 0}, {0, 65, 0}, {0, 67, 0},
	{0, 40, 0}, {0, 5, 0}, {0, 48, 0}, {0, 87, 0}, {0, 31, 0}, {0, 6, 0}, {0, 0, 0},
	{0, 58, 0}, {0, 65, 0}, {0, 91, 0}, {0, 17, 0}, {0, 0, 0}};

    settings.Add("lvlSplit", true, "Split after completing a level");
    settings.Add("deathcounter", false, "Show Death Counter");
    settings.Add("speedometer", false, "Show Speedometer");
    settings.Add("speedround", false, "Round to whole number", "speedometer");
	settings.Add("killscounter", false, "Show Kills Counter");
	settings.Add("hardcore", false, "Check for a hardcore run");
    
    if (timer.CurrentTimingMethod == TimingMethod.RealTime)
    {
        var timingMessage = MessageBox.Show(
            "This game uses RTA w/o Loads as the main timing method.\n"
            + "LiveSplit is currently set to show Real Time (RTA).\n"
            + "Would you like to set the timing method to RTA w/o Loads?",
            "Ghostrunner | LiveSplit",
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
{	refreshRate = 120;
    int moduleSize = modules.First().ModuleMemorySize;
    switch (moduleSize)
    {
        case 78057472:
            version = "steam1";
            break;
        case 78086144:
            version = "steam3";
            break;
		case 78376960:
            version = "steam5";
            break;	   
        case 78036992:
            version = "gog1";
            break;
		case 78168064:
            version = "gog5";
            break;    
        case 77885440:
            version = "egs1";
            break;
        case 77881344:
            version = "egs2";
            break;
        case 77910016:
            version = "egs3";
            break;
        default:
            version = "Unsupported - " + moduleSize.ToString();
            MessageBox.Show("This game version is currently not supported.", "LiveSplit Auto Splitter - Unsupported Game Version");
            break;
    }
}

isLoading
{	return (current.loading || vars.endLevelPause || current.map == "/Game/Levels/MainMenu/MainMenu");
}

update
{
    if (version.Contains("Unsupported"))
        return false;

    if(timer.CurrentPhase != TimerPhase.Running || current.loading || current.map == "/Game/Levels/MainMenu/MainMenu")
        vars.endLevelPause = false;

    if (current.leaderboardShown && !old.leaderboardShown && current.map != "/Game/Levels/MainMenu/MainMenu")
        vars.endLevelPause = true;
		
	string mapn=current.map;

	if (old.loading && current.loading)
	{	vars.nocp = 1;
		vars.lstart = false;
	}
		
	if (old.loading && !current.loading && !vars.lstart)
	{	vars.reachEOL = false;
		vars.lstart = true;
		vars.killsoffset = 0;
		vars.bosskilled = false;

		vars.watchers = new MemoryWatcherList();
		vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04328538, 0x30, 0x130, 0x1D0)) { Name = "xpos" });
		vars.watchers.UpdateAll(game);

		if (!settings["hardcore"])
		{	switch (mapn) {
				case "/Game/Levels/MainMenu/MainMenu":
					vars.cpx=0.0;
					vars.cpy=0.0;
					vars.section = 0;
					break;
				case "/Game/Levels/Tutorial/L_Tutorial_Persistant":
					if (vars.watchers["xpos"].Current > 10000.0f)
					{	vars.section = 2;
					}else
					{ 	vars.section = 1;}
					break;
				case "/Game/Maps/damian_vr4":
					vars.section = 3;
					break;
				case "/Game/Levels/01_INDUSTRIAL/01_01/01_01_World":
					if (vars.watchers["xpos"].Current > 50000.0f)
					{	vars.section = 4;
					}else
					{ 	vars.section = 7;
						vars.killsoffset = vars.sections[4,0]-27;}
					break;
				case "/Game/Maps/ragis_lvl_vr9_2J":
					vars.section = 5;
					break;	
				case "/Game/Levels/Cyberspace/Furrashu_Tutorial/furasshu_tutorial":
					vars.section = 6;
					break;
				case "/Game/Levels/Industrial/L_Industrial_Persistant":
					vars.section = 8;
					vars.killsoffset = -3;
					break;
				case "/Game/Levels/01_INDUSTRIAL/01_03/01_03_world":
					if (vars.watchers["xpos"].Current > 150000.0f)
					{	vars.section = 9;
						vars.killsoffset = -2;
					}else
					{ 	vars.section = 11;}
					break;
				case "/Game/Maps/ragis_lvl_vr10_6":
					vars.section = 10;
					break;				
				case "/Game/Levels/01_INDUSTRIAL/01_04/01_04_World":
					vars.section = 12;
					break;
				case "/Game/Levels/Test_Levels/Ld_test/01_04_Cyberspace":
					vars.section = 13;
					break;
				case "/Game/Maps/Force_Push_Tutorial":
					vars.section = 14;
					break;
				case "/Game/Levels/01_INDUSTRIAL/01_05/01_05_World":
					if (vars.watchers["xpos"].Current > 50000.0f)
					{	vars.section = 16;
					}else
					{ 	vars.section = 15;}
					break;
				case "/Game/Levels/02_CYBERCITY/02_01/02_01_world":
					vars.section = 17;
					break;
				case "/Game/Levels/02_CYBERCITY/02_02/02_02_world":
					vars.section = 18;
					break;
				case "/Game/Maps/ragis_lvl_vr5":
					vars.section = 19;
					break;
				case "/Game/Levels/02_CYBERCITY/02_03/02_03_World":
					if (vars.watchers["xpos"].Current > 200000.0f)
					{	vars.section = 23;
					} else if (vars.watchers["xpos"].Current > 20000.0f)
					{ 	vars.section = 20;
						vars.killsoffset = 1;
					} else {
						vars.section = 21;
					}
					break;
				case "/Game/Levels/Cyberspace/Nami_Tutorial":
					vars.section = 22;
					break;
				case "/Game/Levels/03_HIGHTECH/03_01/03_01_World":
					vars.section = 24;
					break;
				case "/Game/Levels/03_HIGHTECH/03_02/03_02_world":
					if (vars.watchers["xpos"].Current > 20000.0f)
					{	vars.section = 28;
						vars.killsoffset = vars.sections[25,0]-36;
					}else
					{ 	vars.section = 25;
						vars.killsoffset = -30;}
					break;
				case "/Game/Levels/Test_Levels/Ld_test/Cyberspace_Bramki":
					vars.section = 26;
					break;
				case "/Game/Levels/Test_Levels/Ld_test/Mindhacking_Tutorial":
					vars.section = 27;
					break;
				case "/Game/Levels/03_HIGHTECH/03_03/03_03_World":
					vars.section= 29;
					break;
				case "/Game/Levels/03_HIGHTECH/03_04/03_04_world":
					vars.section = 30;
					break;
				case "/Game/Levels/03_HIGHTECH/03_04/Cyberspace_Architect":
					vars.section = 31;
					break;			
			}	
		} else 
		{	switch (mapn) {
				case "/Game/Levels/MainMenu/MainMenu":
					vars.cpx=0.0;
					vars.cpy=0.0;
					vars.section = 0;
					break;
				case "/Game/Levels/Tutorial/L_Tutorial_Persistant":
					if (vars.watchers["xpos"].Current > 10000.0f)
					{	vars.section = 2;
						vars.killsoffset = 26;
					}else
					{ 	vars.section = 1;
						vars.killsoffset = 13;}
					break;
				case "/Game/Levels/01_INDUSTRIAL/01_01/01_01_World":
					vars.section = 3;
					break;
				case "/Game/Levels/Industrial/L_Industrial_Persistant":
					vars.section = 4;
					break;
				case "/Game/Levels/01_INDUSTRIAL/01_03/01_03_world":
					vars.section = 5;
					break;				
				case "/Game/Levels/01_INDUSTRIAL/01_04/01_04_World":
					vars.section = 6;
					break;
				case "/Game/Levels/01_INDUSTRIAL/01_05/01_05_World":
					if (vars.watchers["xpos"].Current > 50000.0f)
					{	vars.section = 8;
						vars.killsoffset = 16;
					}else
					{ 	vars.section = 7;
						vars.killsoffset = 4;}
					break;
				case "/Game/Levels/02_CYBERCITY/02_01/02_01_world":
					vars.section = 9;
					break;
				case "/Game/Levels/02_CYBERCITY/02_02/02_02_world":
					vars.section = 10;
					break;
				case "/Game/Levels/02_CYBERCITY/02_03/02_03_World":
					if (vars.watchers["xpos"].Current > 200000.0f)
					{	vars.section = 13;
					} else if (vars.watchers["xpos"].Current > 20000.0f)
					{ 	vars.section = 11;
						vars.killsoffset = 6;
					} else 
					{	vars.section = 12;
						vars.killsoffset = 31;}
					break;
				case "/Game/Levels/03_HIGHTECH/03_01/03_01_World":
					vars.section = 14;
					break;
				case "/Game/Levels/03_HIGHTECH/03_02/03_02_world":
					vars.section = 15;
					break;
				case "/Game/Levels/03_HIGHTECH/03_03/03_03_World":
					vars.section = 16;
					break;
				case "/Game/Levels/03_HIGHTECH/03_04/03_04_world":
					vars.section = 17;
					break;
				case "/Game/Levels/03_HIGHTECH/03_04/Cyberspace_Architect":
					vars.section = 18;
					break;	
			}
		}
		if(settings["killscounter"] && (version == "steam5" || version == "gog5"))
		{	vars.lvlkills = 0;
			vars.killsave = 0;
			if (!settings["hardcore"]) 
			{	vars.fulllvlkills = vars.sections[vars.section,1];
				vars.killCount = vars.sections[0, 0];
			} else 
			{ 	vars.fulllvlkills = vars.sectionshard[vars.section,1];
				vars.killCount = vars.sectionshard[0, 0];
			}
			vars.watchers = new MemoryWatcherList();
			vars.nocp = 0;
			vars.defaultcounter = false;
			int section = vars.section;
			if (!settings["hardcore"])
			{switch (section) {
				case 0:
					vars.fulllvlkills = 0;
					vars.nocp = 1;
					break;
				case 1:
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04326CF8, 0x28, 0x28, 0x48)) { Name = "cpx" });
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04326CF8, 0x28, 0x28, 0x4C)) { Name = "cpy" });
					vars.watchers.UpdateAll(game);
					break;
				case 4:		
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04326CF8, 0x28, 0xA8, 0x48)) { Name = "cpx" });		
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04326CF8, 0x28, 0xA8, 0x4C)) { Name = "cpy" });
					vars.watchers.UpdateAll(game);
					break;
				case 8:	
					vars.defaultcounter = true;
					vars.watchers.Add(new MemoryWatcher<int>(new DeepPointer(0x04464298, 0xB8, 0x80, 0x8, 0x10, 0x80, 0x2C0)) { Name = "enemies" });
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04326CF8, 0x28, 0x48, 0x48)) { Name = "cpx" });
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04326CF8, 0x28, 0x48, 0x4C)) { Name = "cpy" });
					vars.watchers.UpdateAll(game);
					break;
				case 11:	
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04326CF8, 0x28, 0x80, 0x48)) { Name = "cpx" });
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04326CF8, 0x28, 0x80, 0x4C)) { Name = "cpy" });
					vars.watchers.UpdateAll(game);
					break;
				case 14:
					vars.tempestkills = 0;
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04326CF8, 0x28, 0x0, 0x48)) { Name = "cpx" });
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04326CF8, 0x28, 0x0, 0x4C)) { Name = "cpy" });
					vars.watchers.Add(new MemoryWatcher<int>(new DeepPointer(0x0453D5C0, 0x8, 0x0, 0x298, 0x790, 0x2A0)) { Name = "tempestkills" });
					vars.watchers.Add(new MemoryWatcher<int>(new DeepPointer(0x045A3C20, 0x1F8, 0x15C)) { Name = "tempestblocks" });
					vars.watchers.UpdateAll(game);
					break;					
				case 16:	
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04326CF8, 0x28, 0x60, 0x48)) { Name = "cpx" });
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04326CF8, 0x28, 0x60, 0x4C)) { Name = "cpy" });
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04326CF8, 0x28, 0x60, 0x50)) { Name = "cpz" });
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x043282B8, 0x28, 0x10, 0x20, 0x20, 0x2B0, 0x2B0, 0xE0, 0x10)) { Name = "bosshealth" });
					vars.watchers.UpdateAll(game);
					break;	
				case 18:	
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04326CF8, 0x28, 0x138, 0x48)) { Name = "cpx" });
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04326CF8, 0x28, 0x138, 0x4C)) { Name = "cpy" });
					vars.watchers.UpdateAll(game);				
					break;	
				case 21:	
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04326CF8, 0x28, 0x28, 0x48)) { Name = "cpx" });
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04326CF8, 0x28, 0x28, 0x4C)) { Name = "cpy" });
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x043282B8, 0x28, 0x10, 0x20, 0x20, 0x2B0, 0x2B0, 0xE0, 0x10)) { Name = "bosshealth" });
					vars.watchers.UpdateAll(game);
					break;				
				case 22:
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04326CF8, 0x28, 0x0, 0x48)) { Name = "cpx" });
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04326CF8, 0x28, 0x0, 0x4C)) { Name = "cpy" });
					vars.watchers.Add(new MemoryWatcher<int>(new DeepPointer(0x044D20D0, 0xCB0)) { Name = "surgeblocks" });
					vars.watchers.UpdateAll(game);
					break;		
				case 30:	
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04326CF8, 0x28, 0x8, 0x48)) { Name = "cpx" });
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04326CF8, 0x28, 0x8, 0x4C)) { Name = "cpy" });
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x043282B8, 0x28, 0x10, 0x20, 0x20, 0x2B0, 0x2B0, 0xE0, 0x10)) { Name = "bosshealth" });
					vars.watchers.UpdateAll(game);
					break;				
				default:
					vars.watchers.Add(new MemoryWatcher<int>(new DeepPointer(0x04464298, 0xB8, 0x80, 0x8, 0x10, 0x80, 0x2C0)) { Name = "enemies" });
					vars.defaultcounter = true;
					break;	
				}
			switch (section) {
				case 4:
					vars.fulllvlkills += vars.sections[7,1];
					break;
				case 7:
					vars.fulllvlkills += vars.sections[4,1];
					vars.lvlkills = vars.sections[4,0];
					break;
				case 9:
					vars.fulllvlkills += vars.sections[11,1];
					break;
				case 11:
					vars.fulllvlkills += vars.sections[9,1];
					vars.lvlkills = vars.sections[9,0];
					break;	
				case 25:
					vars.fulllvlkills += vars.sections[28,1];
					break;
				case 28:
					vars.fulllvlkills += vars.sections[25,1];
					vars.lvlkills = vars.sections[25,0];
					break;	
				}
			} else 
			{	vars.watchers.Add(new MemoryWatcher<int>(new DeepPointer(0x04464298, 0xB8, 0x80, 0x8, 0x10, 0x80, 0x2C0)) { Name = "enemies" });
				if (vars.section == 8 || vars.section == 12 || vars.section == 17)
				{	
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04326CF8, 0x28, 0x60, 0x48)) { Name = "cpx" });
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04326CF8, 0x28, 0x60, 0x4C)) { Name = "cpy" });
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04326CF8, 0x28, 0x60, 0x50)) { Name = "cpz" });
					vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x043282B8, 0x28, 0x10, 0x20, 0x20, 0x2B0, 0x2B0, 0xE0, 0x10)) { Name = "bosshealth" });
				} else if (vars.section == 0)
				{ 	vars.fulllvlkills = 0;
					vars.nocp = 1;}
			} 	
		}
	}
	
	
	if(settings["killscounter"] && (version == "steam5" || version == "gog5"))
	{	if (vars.nocp == 0 && vars.lstart )
		{	vars.watchers.UpdateAll(game);}
		
		if (!settings["hardcore"])
		{	if (!vars.defaultcounter)
			{	
				if(current.killpercp > old.killpercp && vars.lstart)
				    vars.lvlkills += current.killpercp-old.killpercp;

				if(current.killpercp > 0 && (vars.watchers["cpx"].Current != vars.watchers["cpx"].Old || vars.watchers["cpy"].Current != vars.watchers["cpy"].Old))
					vars.killsave = current.killpercp;
	
				if(current.killpercp > 0 && (current.levelTime == current.preciseTime && current.preciseTime != old.preciseTime && current.preciseTime > 0.0f))
					vars.killsave = current.killpercp;	
		
				if(current.killpercp == 0 && old.killpercp > 0 && vars.lstart)	
				{	vars.lvlkills += vars.killsave-old.killpercp;
					vars.killsave = 0;}

				if (vars.section == 14)
				{	if (vars.watchers["tempestblocks"].Current >= vars.watchers["tempestkills"].Current)
					{ 	vars.lvlkills = vars.watchers["tempestblocks"].Current;
					} else 
					{	vars.lvlkills = vars.watchers["tempestkills"].Current;}
				}
	
				if (vars.section == 16)
				{	if (vars.watchers["cpx"].Current == 55920.62891f && vars.watchers["cpy"].Current == 25733.92188f && vars.watchers["cpz"].Current == -20644.0f && vars.watchers["bosshealth"].Current <= 0.112f && vars.lvlkills == 0)
					{ 	vars.lvlkills += 1;}
				}
	
				if (vars.section == 21)
				{	if (vars.watchers["bosshealth"].Current == 0.0f && vars.watchers["bosshealth"].Old == 0.25f && vars.lvlkills == 0)
					{ 	vars.lvlkills += 1;}
				}
	
				if (vars.section == 22)
				{	if (vars.watchers["surgeblocks"].Current == 2 && vars.lvlkills == 0)
					{ 	vars.lvlkills += 1;}
					if (vars.watchers["surgeblocks"].Current > 2 && vars.watchers["surgeblocks"].Old == 2 && vars.lvlkills == 1)
					{ 	vars.lvlkills += 2;}	
					if (vars.watchers["surgeblocks"].Current > 4 && vars.watchers["surgeblocks"].Old == 4 && vars.lvlkills == 3)
					{ 	vars.lvlkills += 3;}		
				}
	
				if (vars.section == 30)
				{	if (vars.watchers["bosshealth"].Current == 0.0f && vars.watchers["bosshealth"].Old > 0.32f && vars.watchers["bosshealth"].Old < 0.34f && vars.lvlkills == 0)
					{ 	vars.lvlkills += 1;}
				}
			
			
			} else 
			{	vars.lvlkills = vars.fulllvlkills - vars.watchers["enemies"].Current + vars.killsoffset;
				if (vars.section == 19 ||vars.section == 27)
					vars.lvlkills = 0;
				if (vars.section == 8)
				{	if (vars.watchers["cpx"].Current == -52000.0f && vars.watchers["cpy"].Current == 1550.021973f && vars.killsoffset == -3)
						vars.killsoffset = 0;
				}		
				if (vars.section == 23)
				{	if (vars.watchers["enemies"].Current == 1 && vars.fulllvlkills == 0)
					{	vars.fulllvlkills = 1;}
				}
				
			}
		}else {	
			if (vars.section != 1 && vars.section != 8 && vars.section != 12 && vars.section != 17 )
				vars.lvlkills = vars.fulllvlkills - vars.watchers["enemies"].Current + vars.killsoffset;
			
			if (vars.section == 1)
			{	if (current.levelTime != 0.0f)
				{	vars.lvlkills = vars.fulllvlkills - vars.watchers["enemies"].Current + vars.killsoffset;}
				else{vars.lvlkills = 0;}
			}	
		
			if (vars.section == 8)
			{	if (vars.watchers["enemies"].Current > 21)
				{	vars.killsoffset =39;}
				else{	vars.killsoffset = 16;}
				
				if (vars.bosskilled)
				{	vars.lvlkills = vars.fulllvlkills - vars.watchers["enemies"].Current + vars.killsoffset+1;}
				else{	vars.lvlkills = vars.fulllvlkills - vars.watchers["enemies"].Current + vars.killsoffset;}
				
				if (vars.watchers["cpx"].Current == 55920.62891f && vars.watchers["cpx"].Current != vars.watchers["cpx"].Old && vars.watchers["cpy"].Current == 25733.92188f && vars.watchers["cpz"].Current == -20644.0f && vars.watchers["bosshealth"].Current <= 0.112f && !vars.bosskilled)
				{ 	vars.bosskilled = true;}
			}
			
			if (vars.section == 12)
			{	if (!vars.bosskilled)
				{	vars.lvlkills = vars.fulllvlkills - vars.watchers["enemies"].Current + vars.killsoffset;}
				
				if (vars.watchers["bosshealth"].Current == 0.0f && vars.watchers["bosshealth"].Old == 0.25f && !vars.bosskilled)
				{ 	vars.bosskilled = true;
					vars.lvlkills += 1;}
			}
			
			if (vars.section == 13)
			{	vars.lvlkills = 0;}
			
			if (vars.section == 17)
			{	if (vars.bosskilled)
				{	vars.lvlkills = vars.fulllvlkills - vars.watchers["enemies"].Current + vars.killsoffset+1;}
				else{	vars.lvlkills = vars.fulllvlkills - vars.watchers["enemies"].Current + vars.killsoffset;}
				
				if (vars.watchers["bosshealth"].Current == 0.0f && vars.watchers["bosshealth"].Old > 0.32f && vars.watchers["bosshealth"].Old < 0.34f && !vars.bosskilled)
				{ 	vars.bosskilled = true;
					vars.lvlkills = vars.fulllvlkills - vars.watchers["enemies"].Current + vars.killsoffset+1;
				}
			}
		}
	}

	if (current.levelTime == current.preciseTime && current.levelTime != old.levelTime && current.preciseTime > 0.0f && vars.lstart)
	{	vars.lstart = false;
		if (!settings["hardcore"])
		{	vars.sections[vars.section, 2] = 1;
			if(settings["killscounter"] && (version == "steam5" || version == "gog5"))
			{	
				if (vars.sections[vars.section, 0] == 0)
				{	vars.sections[vars.section, 0] = vars.lvlkills;
					if (vars.section == 7)
					{ vars.killCount += vars.lvlkills - vars.sections[4,0];
					} else if (vars.section == 11)
					{ vars.killCount += vars.lvlkills - vars.sections[9,0];
					} else if (vars.section == 28)
					{ vars.killCount += vars.lvlkills - vars.sections[25,0];
					} else
					{vars.killCount += vars.lvlkills;}
					vars.sections[0, 0] = vars.killCount;
				} else 
				{	if (vars.sections[vars.section, 0] < vars.lvlkills)
					{	vars.killCount += vars.lvlkills - vars.sections[vars.section, 0];
						vars.sections[vars.section, 0] = vars.lvlkills;
						vars.sections[0, 0] = vars.killCount;
					}
				}
			}	
			if(vars.section == 1 || vars.section == 7 || vars.section == 8 || vars.section == 11 || vars.section == 15 || vars.section == 16 || vars.section == 17 ||  vars.section == 23 ||  vars.section == 24 || vars.section == 28 || vars.section == 29 || vars.section == 30)
				vars.reachEOL = true;
				
			if(vars.section == 4)
			{	vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04328538, 0x30, 0x130, 0x1D4)) { Name = "ypos" });
				vars.watchers.UpdateAll(game);
				if (vars.watchers["ypos"].Current > -50000.0f)
					vars.reachEOL = true;
			}
			
			if(vars.section == 9)
			{	vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04328538, 0x30, 0x130, 0x1D4)) { Name = "ypos" });
				vars.watchers.UpdateAll(game);
				if (vars.watchers["ypos"].Current > -75000.0f)
					vars.reachEOL = true;
			}
			
			if(vars.section == 21)
			{	vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04328538, 0x30, 0x130, 0x1D4)) { Name = "ypos" });
				vars.watchers.UpdateAll(game);
				if (vars.watchers["ypos"].Current < 200000.0f)
					vars.reachEOL = true;
			}
			
			if(vars.section == 25)
			{	vars.watchers.Add(new MemoryWatcher<float>(new DeepPointer(0x04328538, 0x30, 0x130, 0x1D4)) { Name = "ypos" });
				vars.watchers.UpdateAll(game);
				if (vars.watchers["ypos"].Current < 0.0f)
					vars.reachEOL = true;
			}
		} else 
		{	vars.sectionshard[vars.section, 2] = 1;
			if(settings["killscounter"] && (version == "steam5" || version == "gog5"))
			{	if (vars.sectionshard[vars.section, 0] == 0)
				{	vars.sectionshard[vars.section, 0] = vars.lvlkills;
					vars.killCount += vars.lvlkills;
					vars.sectionshard[0, 0] = vars.killCount;
				} else 
				{	if (vars.sectionshard[vars.section, 0] < vars.lvlkills)
					{	vars.killCount += vars.lvlkills - vars.sectionshard[vars.section, 0];
						vars.sectionshard[vars.section, 0] = vars.lvlkills;
						vars.sectionshard[0, 0] = vars.killCount;}
				}
			}
			vars.reachEOL=true;
		}	
	}

    if(current.deaths == old.deaths + 1 && current.preciseTime > 0.0f)
        vars.deathCount += 1;

    if(timer.CurrentPhase == TimerPhase.NotRunning)
        vars.deathCount = 0;

    if(settings["speedometer"])
        vars.UpdateSpeedometer(current.xVel, current.yVel, settings["speedround"]);

    if(settings["deathcounter"])
        vars.SetTextComponent("Deaths", (vars.deathCount).ToString());
		
	if(settings["killscounter"] && (version == "steam5" || version == "gog5"))
	{	if (!settings["hardcore"])
		{	vars.SetTextComponent("Kills", (vars.lvlkills).ToString()+"/"+(vars.fulllvlkills).ToString()+"             "+(vars.killCount).ToString()+"/"+(vars.sections[0,1]).ToString());
		} else
		{	vars.SetTextComponent("Kills", (vars.lvlkills).ToString()+"/"+(vars.fulllvlkills).ToString()+"             "+(vars.killCount).ToString()+"/"+(vars.sectionshard[0,1]).ToString());}
	}		
}

start
{	vars.reachEOL = false;
	vars.endLevelPause = false;
    vars.deathCount = 0;
	vars.killCount = 0;
	vars.sections = new int[32, 3] { {0, 505, 0}, {0, 13, 0}, {0, 9, 0}, {0, 0, 0}, {0, 27, 0}, {0, 0, 0}, {0, 10, 0},
	{0, 22, 0}, {0, 21, 0}, {0, 50, 0}, {0, 0, 0}, {0, 2, 0}, {0, 38, 0},
	{0, 0, 0}, {0, 7, 0}, {0, 20, 0}, {0, 1, 0}, {0, 34, 0}, {0, 60, 0},
	{0, 0, 0}, {0, 17, 0}, {0, 1, 0}, {0, 6, 0}, {0, 0, 0}, {0, 39, 0}, {0, 36, 0},
	{0, 0, 0}, {0, 0, 0}, {0, 30, 0}, {0, 61, 0}, {0, 1, 0}, {0, 0, 0}};
	vars.sectionshard = new int[19, 3] { {0, 717, 0}, {0, 26, 0}, 
	{0, 13, 0},	{0, 60, 0}, {0, 38, 0}, {0, 65, 0}, {0, 67, 0},
	{0, 40, 0}, {0, 5, 0}, {0, 48, 0}, {0, 87, 0}, {0, 31, 0}, {0, 6, 0}, {0, 0, 0},
	{0, 58, 0}, {0, 65, 0}, {0, 91, 0}, {0, 17, 0}, {0, 0, 0}};
    return (old.preciseTime == 0 && current.preciseTime > 0 && vars.section == 1);
}

split
{
    if (current.leaderboardShown && !old.leaderboardShown && current.map != "/Game/Levels/MainMenu/MainMenu" && settings["lvlSplit"])
	{	vars.reachEOL = false;
		return true;
	}	
	
	if (vars.reachEOL && (current.loading || vars.endLevelPause || current.map == "/Game/Levels/MainMenu/MainMenu") && current.map == "/Game/Levels/MainMenu/MainMenu" && old.map == "/Game/Levels/MainMenu/MainMenu" && settings["lvlSplit"])	
	{	vars.reachEOL = false;
		return true;
	}
	
    if (current.map == "/Game/Levels/03_HIGHTECH/03_04/Cyberspace_Architect" && current.levelTime == current.preciseTime && current.levelTime != old.levelTime && current.preciseTime > 0.0f)
        return true;
}

exit
{
    timer.IsGameTimePaused = true;
    vars.endLevelPause = true;
	vars.lstart = false;
	vars.reachEOL = false;
}
