/// @description Insert description here
// You can write your code in this editor

if (leading == OUT)
{
	percent = min(1, percent + .016);
	
	if (percent >= 1)
	{
		leading = IN;
		
	}
}
else
{
	percent = max(0, percent - .016);
	if (percent <= 0)
	{
		instance_destroy();
	}
}