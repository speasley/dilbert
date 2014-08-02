module Dilbert
  describe DilbertService do
    subject { DilbertService.new }

    describe "#fetch_latest" do
      let(:returned_image_url) { "/dyn/str_strip/000000000/00000000/0000000/200000/20000/6000/000/226097/226097.strip.print.gif\n" }

      it "fetches the url to the latest dilbert comic" do
        subject.stub(:curl_command).and_return(returned_image_url)
        expect(subject.fetch_latest).to eql("https://www.dilbert.com#{returned_image_url}".chomp)
      end
    end
  end
end
