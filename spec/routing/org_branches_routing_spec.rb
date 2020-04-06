require('rails_helper')

RSpec.describe(OrgBranchesController, type: :routing) do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/org_branches').to(route_to('org_branches#index'))
    end

    it 'routes to #new' do
      expect(get: '/org_branches/new').to(route_to('org_branches#new'))
    end

    it 'routes to #show' do
      expect(get: '/org_branches/1').to(route_to('org_branches#show', id: '1'))
    end

    it 'routes to #edit' do
      expect(get: '/org_branches/1/edit').to(route_to('org_branches#edit', id: '1'))
    end

    it 'routes to #create' do
      expect(post: '/org_branches').to(route_to('org_branches#create'))
    end

    it 'routes to #update via PUT' do
      expect(put: '/org_branches/1').to(route_to('org_branches#update', id: '1'))
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/org_branches/1').to(route_to('org_branches#update', id: '1'))
    end

    it 'routes to #destroy' do
      expect(delete: '/org_branches/1').to(route_to('org_branches#destroy', id: '1'))
    end
  end
end
