using Godot;

public partial class wall : Area2D
{
  public void on_ball_entered(ball a) => a.invert_x();
}