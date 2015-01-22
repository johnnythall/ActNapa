require 'test_helper'

class ActorsControllerTest < ActionController::TestCase
  setup do
    @actor = actors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actor" do
    assert_difference('Actor.count') do
      post :create, actor: { age_max: @actor.age_max, age_min: @actor.age_min, city_of_residence: @actor.city_of_residence, email: @actor.email, ethnicity_id: @actor.ethnicity_id, expected_grad: @actor.expected_grad, eye_color: @actor.eye_color, first_name: @actor.first_name, hair_color: @actor.hair_color, height: @actor.height, last_name: @actor.last_name, phone: @actor.phone, previous_experience: @actor.previous_experience, reel: @actor.reel, sex_id: @actor.sex_id, skills: @actor.skills, student: @actor.student, website: @actor.website }
    end

    assert_redirected_to actor_path(assigns(:actor))
  end

  test "should show actor" do
    get :show, id: @actor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @actor
    assert_response :success
  end

  test "should update actor" do
    patch :update, id: @actor, actor: { age_max: @actor.age_max, age_min: @actor.age_min, city_of_residence: @actor.city_of_residence, email: @actor.email, ethnicity_id: @actor.ethnicity_id, expected_grad: @actor.expected_grad, eye_color: @actor.eye_color, first_name: @actor.first_name, hair_color: @actor.hair_color, height: @actor.height, last_name: @actor.last_name, phone: @actor.phone, previous_experience: @actor.previous_experience, reel: @actor.reel, sex_id: @actor.sex_id, skills: @actor.skills, student: @actor.student, website: @actor.website }
    assert_redirected_to actor_path(assigns(:actor))
  end

  test "should destroy actor" do
    assert_difference('Actor.count', -1) do
      delete :destroy, id: @actor
    end

    assert_redirected_to actors_path
  end
end
