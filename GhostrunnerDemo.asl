state("Ghostrunner-Win64-Shipping")
{
    //float time : 0x035571D0, 0x30, 0x280, 0x398;
    float time : 0x036E0638, 0x514;
    bool gameBeaten : 0x03562128, 0x160, 0xC8, 0x30;
    //float xPos : 0x0355EEB0, 0xA0, 0x130, 0x1D0;
    //float yPos : 0x0355EEB0, 0xA0, 0x130, 0x1D4;
    bool cantControl : 0x0355ED08, 0x2B0;
}

isLoading
{
    return true;
}

startup
{
    vars.timerOffset = 0f;
}

start
{
    //if((Math.Round(old.xPos) == -20179 && Math.Round(current.xPos) != -20179) ||(Math.Round(old.xPos) == -670638 && Math.Round(current.xPos) != -67068) )
    if(!current.cantControl && old.cantControl)
    {
        vars.timerOffset = current.time - 21.0f;
        return true;
    }

}

update
{
    //print(Math.Round(current.yPos).ToString());

}
split
{
    if(current.gameBeaten && !old.gameBeaten)
        return true;
}

reset
{
    if(current.time < old.time)
    {
        vars.timerOffset = 0f;
        return true;
    }
}

gameTime
{
    return TimeSpan.FromSeconds(current.time - vars.timerOffset);

}
