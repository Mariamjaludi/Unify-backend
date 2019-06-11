Rails.application.routes.draw do

  resources :university_course_subjects
  resources :university_courses
  resources :student_courses
  resources :student_subjects
  resources :students
  resources :subjects
  resources :courses
  resources :universities

  post '/auth/create', to: 'auth#create'
  get "/auth/show", to: 'auth#show'
end
