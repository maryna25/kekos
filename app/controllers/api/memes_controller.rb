class Api::MemesController < ApiController
  skip_before_action :verify_authenticity_token

  def index
    render json: Meme.all.as_json
  end

  def new
    @meme = Meme.new
  end

  def create
    m = Meme.create(title: params[:meme][:title])
    render json: m.as_json
  end

  def update
  end

  def edit
  end

  def destroy
    Meme.find(params[:id]).delete
    redirect_to action: :index
  end

  def show
    render json: Meme.find(params[:id]).as_json(methods: :created_at)
  end
end
