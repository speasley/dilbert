module Dilbert
  describe Console do
    subject { Console.new(printer, dilbert_service) }
    let(:printer) { double(puts: true) }
    let(:dilbert_service) { double }

    describe "#run" do
      let(:url_to_comic) { 'http://dilbert.com/blah.jpg' }
      let(:argv) { [] }

      it "fetches the latest dilbert comic" do
        dilbert_service.stub(:fetch_latest).and_return(url_to_comic)
        subject.run(argv)
        expect(printer).to have_received(:puts).with(url_to_comic)
      end
    end
  end
end
