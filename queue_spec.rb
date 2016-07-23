require_relative 'queue'

describe MyQueue do
  let(:queue) {MyQueue.new}

  it "enqueues" do
    queue.enqueue(0)
    queue.enqueue(1)
    queue.enqueue(2)
    expect(queue.size).to eq(3)
    expect(queue.get(0)).to eq(0)
    expect(queue.get(1)).to eq(1)
    expect(queue.get(2)).to eq(2)
  end

  it "dequeues" do
    queue.enqueue(0)
    queue.enqueue(1)
    expect(queue.dequeue).to eq(0)
    expect(queue.dequeue).to eq(1)
    expect(queue.dequeue).to be(nil)
  end

  it "peel" do
    expect(queue.peel).to be(nil)
    queue.enqueue(0)
    queue.enqueue(1)
    expect(queue.peel).to eq(0)
    expect(queue.peel).to eq(0)
  end

  it "empty?" do
    expect(queue.empty?).to be(true)
    queue.enqueue(0)
    expect(queue.empty?).to be(false)
  end
end
