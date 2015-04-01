class ReviewGuidesController < ApplicationController
  before_action :set_review_guide, only: [:show, :edit, :update, :destroy]
  before_action :set_guide
  before_action :authenticate_visitor!

  def new_review_guide
    @review_guide = ReviewGuide.new
  end

  def edit
  end

  def create_review_guide
    @review_guide = ReviewGuide.new(review_guide_params)
    @review_guide.guide_id = @guide.id
    if @review_guide.save
      redirect_to profile_path
    else
      render 'new'
    end
  end

  def update
    @review_guide.update(review_guide_params)
  end

  def destroy
    @review_guide.destroy
  end

  private
    def set_review_guide
      @review_guide = ReviewGuide.find(params[:id])
    end

    def set_guide
      @guide = Guide.find(params[:id])
    end

    def review_guide_params
      params.require(:review_guide).permit(:rating, :comment)
    end
end
