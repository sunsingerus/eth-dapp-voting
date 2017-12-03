code = fs.readFileSync('Voting.sol').toString()
compiledCode = solc.compile(code)

