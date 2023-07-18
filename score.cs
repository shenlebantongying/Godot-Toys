using Godot;

public partial class score : RichTextLabel
{
  public int Score;

  public override void _Ready()
  {
    display_score();
  }

  private void display_score()
  {
    Text = $"Score: {Score}";
  }

  public void inc_score()
  {
    Score += 1;
    display_score();
  }

  public void on_failed()
  {
    Text = $"You lose, final Score is {Score}";
  }

  public void reset()
  {
    Score = 0;
    display_score();
  }
}