class Actors::CommentsControler < CommentsControler
  before_action :set_commentable

  private
    def set_commentable
      @commentable = Actor.find(params[:actor_id])
    end
end
