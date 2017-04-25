class CandidatesController < InheritedResources::Base

  private

    def candidate_params
      params.require(:candidate).permit(:name)
    end
end

