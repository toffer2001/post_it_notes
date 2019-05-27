class NotesController < ApplicationController

  before_action :set_note, only: [:show, :update, :destroy, :edit]

  def index
    @notes = Note.all

  end

  def show
    # before_action
  end

  def new
    @note = Note.new
    render partial: 'form'
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to notes_path
    else
      render :new
    end

  end

  def edit
    # before_action
    render partial: 'form'

  end

  def update
    # before_action

    if @note.update(note_params)
      redirect_to notes_path
    else
      render :edit
    end

  end

  def destroy
    # before_action
    @note.destroy
    redirect_to notes_path

  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:name, :body)
  end

end
