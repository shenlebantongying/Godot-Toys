using Godot;

public partial class main : Node2D
{
  public override void _Ready()
  {
    // Must be called once for the entire app.
    GD.Randomize();
  }

  public override void _Process(double delta)
  {
  }
}