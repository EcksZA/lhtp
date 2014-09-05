class Lesson < ActiveRecord::Base
  validates :name, :content, :number, presence: true
  validates :number, uniqueness: :true
  belongs_to :section

  def next
    Lesson.where('number > ?', "#{self.number}").first
    # lesson_sort = Lesson.all.sort_by(&:number)
    # current_index = lesson_sort.index(self)
    # @next_lesson = lesson_sort[current_index + 1]
  end

  def previous
    Lesson.where('number < ?', "#{self.number}").last
    # lesson_sort = Lesson.all.sort_by(&:number)
    # current_index = lesson_sort.index(self)
    # @previous_lesson = lesson_sort[current_index - 1]
  end
end
