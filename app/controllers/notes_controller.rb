class NotesController < ApplicationController
  # Requires an existing DB record.
  # Before end is reached for these definitions, set_note (a private definition) is run
  before_action :set_note, only: %i[ show edit update destroy ]

  def index
    @notes = Note.all
  end

  def show
  end

  def new
    @note = Note.new
  end

  # For creating a new note at /notes/new
  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to @note
    else
      render :new, status: :unprocessable_entity
    end
  end

  # For editing a note at /notes/[id]/edit
  def edit
  end

  def update
    if @note.update(note_params)
      redirect_to @note
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @note.destroy
    redirect_to notes_path
  end

  private
    def set_note
      @note = Note.find(params[:id])
    end

    def note_params
      params.expect(note: [ :title, :content ])
    end
end
