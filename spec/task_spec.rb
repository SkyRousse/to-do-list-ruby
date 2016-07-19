require('spec_helper')

describe(Task) do
  it("belongs to a list") do
    list = List.create({:name => "list"})
    task = Task.create({:description => "task", :list_id => list.id})
    expect(task.list()).to(eq(list))
  end  
end
