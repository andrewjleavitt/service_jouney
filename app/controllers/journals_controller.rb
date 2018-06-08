class JournalsController < ApplicationController
  def index
    @journals = Journal.all
  end

  def new
  end

  def create
    Journal.create(journal_params)
    flash.notice = "Journal was successfully created."
    redirect_to journals_path
  end

  private

  def journal_params
    params.require(:journal).permit(:name)
  end
end
