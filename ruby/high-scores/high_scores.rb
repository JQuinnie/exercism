class HighScores
  attr_accessor :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    scores.last
  end

  def personal_best
    scores.max
  end

  def personal_top
    scores.max(3)
  end

  def report
    msg = "Your latest score was #{latest}. "
    if latest == personal_best
      msg + "That's your personal best!"
    elsif latest < personal_best
      msg + "That's #{personal_best - latest} short of your personal best!"
    end
  end
end
