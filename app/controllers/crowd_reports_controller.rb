class CrowdReportsController < ApplicationController
  before_action :set_crowd_report, only: %i[ show edit update destroy ]

  # GET /crowd_reports or /crowd_reports.json
  def index
    @crowd_reports = CrowdReport.all
  end

  # GET /crowd_reports/1 or /crowd_reports/1.json
  def show
  end

  # GET /crowd_reports/new
  def new
    @crowd_report = CrowdReport.new
  end

  # GET /crowd_reports/1/edit
  def edit
  end

  # POST /crowd_reports or /crowd_reports.json
  def create
    @crowd_report = CrowdReport.new(crowd_report_params)

    respond_to do |format|
      if @crowd_report.save
        format.html { redirect_to @crowd_report, notice: "Crowd report was successfully created." }
        format.json { render :show, status: :created, location: @crowd_report }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @crowd_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crowd_reports/1 or /crowd_reports/1.json
  def update
    respond_to do |format|
      if @crowd_report.update(crowd_report_params)
        format.html { redirect_to @crowd_report, notice: "Crowd report was successfully updated." }
        format.json { render :show, status: :ok, location: @crowd_report }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @crowd_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crowd_reports/1 or /crowd_reports/1.json
  def destroy
    @crowd_report.destroy!

    respond_to do |format|
      format.html { redirect_to crowd_reports_path, status: :see_other, notice: "Crowd report was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crowd_report
      @crowd_report = CrowdReport.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def crowd_report_params
      params.expect(crowd_report: [ :level, :comment, :location_id ])
    end
end
