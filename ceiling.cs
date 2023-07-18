using Godot;

public partial class ceiling : Area2D
{
  public override void _Ready()
  {
  }

  public void on_ball_entered(ball ball)
  {
    ball.random_y();
  }

  public override void _Process(double delta)
  {
  }
}