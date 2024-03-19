using System;
using Godot;

public partial class Main : Node2D
{
    private readonly Random _rand = new();
    private Vector2I _area;
    private PackedScene _myObj = ResourceLoader.Load<PackedScene>("res://MyObj.tscn");
    private string _objGroup = "my_objects";
    private Timer _spawnTimer;

    public override void _Ready()
    {
        GD.Randomize();
        _spawnTimer = new Timer();
        _area = (Vector2I)GetViewport().GetVisibleRect().Size;

        _spawnTimer.Timeout += () =>
        {
            if (GetTree().GetNodeCountInGroup(_objGroup) < 10) SpawnMyObj();
        };

        AddChild(_spawnTimer);
        _spawnTimer.WaitTime = 0.5;
        _spawnTimer.Start();
    }

    private void SpawnMyObj()
    {
        var o = _myObj.Instantiate<Area2D>();
        o.GlobalPosition = new Vector2(_rand.Next(_area.X), _rand.Next(_area.Y));
        AddChild(o);
        o.AddToGroup(_objGroup);
    }


    // Called every frame. 'delta' is the elapsed time since the previous frame.
    public override void _Process(double delta)
    {
    }
}