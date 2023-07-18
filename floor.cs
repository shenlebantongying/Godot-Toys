using Godot;

public partial class floor : Area2D
{
  [Signal]
  public delegate void GameFailedEventHandler();

  public override void _Ready()
  {
  }

  public void on_ball_enter(Node ball)
  {
    EmitSignal(SignalName.GameFailed);
  }

  public override void _Process(double delta)
  {
  }
}