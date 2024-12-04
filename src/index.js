const express = require("express");
const fs = require("fs");
const { HtmlContentService } = require("./html");

const app = express();
app.use(express.json());

const passwordPath = "/data/password.txt";
const htmlContentService = new HtmlContentService();

app.get("/", (req, res) => {
  try {
    const content = htmlContentService.getModifiedHtmlContent();
    res.send(content);
  } catch (err) {
    res
      .status(500)
      .send("An error occurred while getting the modified HTML content.");
  }
});

app.post("/validate-password", (req, res) => {
  try {
    const systemPassword = fs.readFileSync(passwordPath, "utf8").trim();

    if (systemPassword === req.body.password) {
      res.send("Password is correct!");
    } else {
      res.send("Password is incorrect!");
    }
  } catch (err) {
    res.status(500).send("An error occurred while validating the password.");
  }
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`Server is running on port ${PORT}`));
