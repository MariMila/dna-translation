class Ribosome
  def translate(rna_messenger)
    tg = {'AGU' => 'aa1', 'UUG' => 'aa2', 'AAA' => 'aa3', 'UUU' => 'aa4', 'UAG' => 'aa5', 'GGU' => 'aa6', 'CCA' => 'aa7', 'CGG' => 'aa8'}
    tradu = rna_messenger.scan(/.../).map{ |ele| tg[ele]}
    return 'Translation aborted' if tradu.any?(nil)
    tradu*'-'
  end
end
