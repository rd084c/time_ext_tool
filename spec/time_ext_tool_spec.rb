RSpec.describe TimeExtTool do
  it "has a version number" do
    expect(TimeExtTool::VERSION).not_to be nil
  end

  it "does something useful" do
    # expect(false).to eq(true)
    current_time = Time.now
    cur_str = current_time.strftime("%F %T")
    expect(cur_str).to eq(current_time.to_full)
  end
end
