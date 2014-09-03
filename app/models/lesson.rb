class Lesson < ActiveRecord::Base
  validates :name, :content, :number, :section_id, presence: true
  validates :number, uniqueness: :true
  belongs_to :section

  def next
    lesson_sort = Lesson.all.sort_by(&:name)
    current_index = lesson_sort.index(self)
    @next_lesson = lesson_sort.fetch(current_index + 1)
  end

  def previous
    lesson_sort = Lesson.all.sort_by(&:name)
    current_index = lesson_sort.index(self)
    @previous_lesson = lesson_sort.fetch(current_index - 1)
  end
end
