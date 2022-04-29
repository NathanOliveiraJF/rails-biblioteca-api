require "test_helper"

class ObrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @obra = obras(:one)
  end

  test "should get index" do
    get obras_url, as: :json
    assert_response :success
  end

  test "should create obra" do
    assert_difference("Obra.count") do
      post obras_url, params: { obra: { editora: @obra.editora, foto: @obra.foto, titulo: @obra.titulo } }, as: :json
    end

    assert_response :created
  end

  test "should show obra" do
    get obra_url(@obra), as: :json
    assert_response :success
  end

  test "should update obra" do
    patch obra_url(@obra), params: { obra: { editora: @obra.editora, foto: @obra.foto, titulo: @obra.titulo } }, as: :json
    assert_response :success
  end

  test "should destroy obra" do
    assert_difference("Obra.count", -1) do
      delete obra_url(@obra), as: :json
    end

    assert_response :no_content
  end
end
