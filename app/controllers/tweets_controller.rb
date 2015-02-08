class TweetsController < ApplicationController
def index
    
end

def show
	
end

def new
	
end

def edit
	
end


def create

end

def update

end

def destroy

end

private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
