const path = require('path');

module.exports = {
  entry: './src/index.js', // O ponto de entrada do seu aplicativo
  output: {
    path: path.resolve(__dirname, 'dist'), // Diretório de saída
    filename: 'bundle.js', // Nome do arquivo de saída
  },
  module: {
    rules: [
      {
        test: /\.js$/, // Aplica a transformação apenas para arquivos .js
        exclude: /node_modules/, // Exclui a pasta node_modules
        use: {
          loader: 'babel-loader', // Usa o babel-loader para transpilar o código
          options: {
            presets: ['@babel/preset-env'], // Usa as configurações padrão do Babel
          },
        },
      },
    ],
  },
};
