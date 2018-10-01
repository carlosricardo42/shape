require_relative "../lib/circle"

class CircleTest 
  describe Circle do
    subject {described_class.new}

    describe '#getArea' do 
      context 'return the area of the circle' do
        it 'should be 0 when the radio is 0' do
           expect(subject.getArea(0)).to eq(0)
        end
        it 'return the correct area' do
            expect(subject.getArea(1)).to eq(3.14)
        end

        it 'return the correct area with float numbers' do
            expect(subject.getArea(2.2)).to eq(15.21)
        end
      end
      context 'Raise error on fail' do
        it 'Debe ser un numero positivo when the radio is a string' do
          expect{subject.getArea('test')}.to raise_error(AreaError)
        end
        it 'Debe ser un numero positivo when the radio is negative' do
           expect{subject.getArea(-1)}.to raise_error(AreaError)
        end
      end     
    end
  end
end