class Collatz

  def longest_sequence
    start = 1
    longest_chain = []
    until start > 3     
      next_chain = sequence(start)
               
      if next_chain.length > longest_chain.length
        longest_chain = next_chain
      end
      start += 1 
     end
    puts longest_chain

  end

  def sequence(num)
        sequence_chain = [num]
          until num == 1
        if num.even? 
             num = num / 2
             sequence_chain.push(num) 
          else
             num = (3 * num + 1)
             sequence_chain.push(num)
          end        
        end
    sequence_chain
  end
  
    
end


chain = Collatz.new

chain.longest_sequence()