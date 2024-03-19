using Godot;

public partial class MyObj : Area2D
{
    private bool _fly;

    public override void _Ready()
    {
    }

    private Vector2 _getMarkerPos()
    {
        return GetParent().GetNode<Node2D>("marker").GlobalPosition;
    }

    public override void _Process(double delta)
    {
        var markerPos = _getMarkerPos();
        if (_fly) GlobalPosition = GlobalPosition.MoveToward(markerPos, (float)delta * 100);
    }


    public void _on_mouse_entered()
    {
        GD.Print("Fly!");
        _fly = true;
    }
}