dep 'build tools' do
  requires {
    on :osx, 'xcode tools'
    on :snow_leopard, 'llvm in path'
    on :linux, 'build-essential', pkg('autoconf'), pkg('automake'), pkg('libtool')
  }
end

pkg 'build-essential' do
  provides 'gcc', 'g++', 'make', 'ld'
end

dep 'lolled' do
  requires 
  met? { false }
  meet { raise "omg" }
end

dep 'lolled2' do
  requires 'lolled'
  met? { true }
  meet { raise "omg" }
end
