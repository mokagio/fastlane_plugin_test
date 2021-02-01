describe Fastlane::Actions::IntegerParamDemoAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The integer_param_demo plugin is working!")

      Fastlane::Actions::IntegerParamDemoAction.run(nil)
    end
  end
end
