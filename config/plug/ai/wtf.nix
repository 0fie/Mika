{
  plugins.wtf = {
    enable = true;
    context = true; # Yes, send all my code OpenAI.
    language = "english";
    openaiModelId = "gpt-3.5-turbo";
    searchEngine = "google";
  };
  # see https://github.com/piersolenski/wtf.nvim
  # A valid OpenAI API key is required.
}
