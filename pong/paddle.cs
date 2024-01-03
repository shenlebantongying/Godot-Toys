using Godot;

public partial class paddle : Area2D
{
  [Signal]
  public delegate void BallTouchedEventHandler();

  public void on_ball_enter(ball ball)
  {
    ball.random_y();
    EmitSignal(SignalName.BallTouched);
  }

  public override void _Process(double delta)
  {
    Vector2 mpos = GetViewport().GetMousePosition();
    if (0 < mpos.X && mpos.X < 300)
    {
      mpos.Y = 290;
      Position = mpos;
    }
  }
}