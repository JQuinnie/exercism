class HighScores
  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end

  def personal_top
    @scores.sort.reverse.first(3)
  end

  def report
    latest = @scores.last
    if latest == personal_best
      "Your latest score was #{latest}. That's your personal best!"
    elsif latest < personal_best
      "Your latest score was #{latest}. That's #{personal_best - latest} short of your personal best!"
    end
  end
end
