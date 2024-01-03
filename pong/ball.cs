using Godot;

public partial class ball : CharacterBody2D
{
  public const float Speed = 200.0f;
  public int xDir = 1;
  public float xVelocity = 1;
  public int yDir = 1;

  public void invert_x() => xDir *= -1;

  public void random_y()
  {
    yDir *= -1;
    xVelocity = GD.Randf();
  }

  public void reset()
  {
    xVelocity = 1;
    xDir = 1;
    yDir = 1;
    GlobalPosition = new Vector2(50, 50);
  }

  public override void _PhysicsProcess(double delta)
  {
    Vector2 velocity;
    velocity.X = xDir * Speed * xVelocity;
    velocity.Y = yDir * Speed;
    Velocity = velocity;
    MoveAndSlide();
  }
}