require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get articles_url
    assert_response :success
  end

  test "should get new" do
    get new_article_url
    assert_response :success
  end

  test "should create article" do
    assert_difference('Article.count') do
      post articles_url, params: { article: { : @article., author: @article.author, journal: @article.journal, month: @article.month, note: @article.note, number: @article.number, page_id: @article.page_id, pages: @article.pages, ref_key: @article.ref_key, string: @article.string, title: @article.title, volume: @article.volume, year: @article.year } }
    end

    assert_redirected_to article_url(Article.last)
  end

  test "should show article" do
    get article_url(@article)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_url(@article)
    assert_response :success
  end

  test "should update article" do
    patch article_url(@article), params: { article: { : @article., author: @article.author, journal: @article.journal, month: @article.month, note: @article.note, number: @article.number, page_id: @article.page_id, pages: @article.pages, ref_key: @article.ref_key, string: @article.string, title: @article.title, volume: @article.volume, year: @article.year } }
    assert_redirected_to article_url(@article)
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete article_url(@article)
    end

    assert_redirected_to articles_url
  end
end
