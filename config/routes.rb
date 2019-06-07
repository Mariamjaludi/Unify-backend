Rails.application.routes.draw do
  resources :university_courses
  resources :university_course_subjects
  resources :universities
  resources :subjects
  resources :students
  resources :student_subjects
  resources :student_courses
  resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
