class AuthController < ApplicationController

#logging in
  def create
    student = Student.find_by(name: params[:name])
    if student && student.authenticate(params[:password])
      payload = {student_id: student.id}
      token = issue_token(payload)
      render json: { jwt: token, Student: StudentSerializer.new(student)}
    else
      render json: { error: "The token couldn't be created. Login failed."}
    end
  end

  def show
    if logged_in
      render json: {student: StudentSerializer.new(current_student)}
    else
      render json: {error: "Student not found."}
    end
  end



end
