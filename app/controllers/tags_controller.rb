class TagsController < ApplicationController
  def add_to_note
    @tag = Tag.find_or_create_by(title: params[:title], user: current_user)
    @note = Note.find params[:note_id]
    @note.tag >> @tag

    render json: {message: "Tag adicionada com sucesso!"}, status: :ok
  end

  def remove_from_note
    @tag.find_by(title: params[:title], user: current_user)
    @note = Note.find(params[:note.id])
    @note.tags.delete(@tag.id)
    @tag.destroy if @tag.notes.count == 0

    render json: {message: "Tag removida!"}, status: :ok
  end
end
