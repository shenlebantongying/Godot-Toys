using Godot;

public partial class Marker : Node2D
{
    [Signal]
    public delegate void NewScoreEventHandler(int score);

    private readonly string _objGroup = "my_objects";
    private int _score;


    public override void _Ready()
    {
    }

    public override void _Process(double delta)
    {
        GlobalPosition = GlobalPosition.MoveToward(GetViewport().GetMousePosition(), (float)delta * 50);
    }

    private void _on_area_entered(Area2D area)
    {
        _score += 1;
        EmitSignal(SignalName.NewScore, _score);
        if (area.IsInGroup(_objGroup)) area.QueueFree();
    }
}