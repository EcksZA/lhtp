require 'rails_helper'
require 'pry'

describe Lesson do
  it { should validate_presence_of :name }
  it { should validate_presence_of :content }
  it { should validate_presence_of :number }
  it { should validate_presence_of :section_id }
  it { should validate_uniqueness_of :number }
  it { should belong_to :section }

  context '#next' do
    it 'returns the lesson with the next-highest number than the current lesson' do
      current_lesson = Lesson.create({:name => 'lesson1', :content => 'blah', :section_id => 1, :number => 1})
      next_lesson = Lesson.create({:name => 'lesson2', :content => 'blah', :section_id => 1, :number => 2})
      expect(current_lesson.next).to eq next_lesson
    end
  end

  context '#previous' do
    it 'returns the lesson with the previous-highest number than the current lesson' do
      current_lesson = Lesson.create({:name => 'lesson4', :content => 'blah', :section_id => 1, :number => 4})
      previous_lesson = Lesson.create({:name => 'lesson3', :content => 'blah', :section_id => 1, :number => 3})
      expect(current_lesson.previous).to eq previous_lesson
    end
  end
end
