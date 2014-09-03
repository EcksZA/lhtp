require 'rails_helper'
require 'pry'

describe Lesson do
  it { should validate_presence_of :name }
  it { should validate_presence_of :content }

  context '#next' do
    it 'returns the lesson with the next-highest number than the current lesson' do
      current_lesson = Lesson.create({:name => 'lesson1', :content => 'blah', :number => 1})
      next_lesson = Lesson.create({:name => 'lesson2', :content => 'blah', :number => 2})
      expect(current_lesson.next).to eq next_lesson
    end
  end
end
