class CommentsController < ApplicationController
  def create
    @crowd_report = CrowdReport.find(params[:crowd_report_id])
    @comment = @crowd_report.comments.build(comment_params)

    if @comment.save
      redirect_to @crowd_report, notice: "コメントを追加しました"
    else
      redirect_to @crowd_report, alert: "コメントを追加できませんでした"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end