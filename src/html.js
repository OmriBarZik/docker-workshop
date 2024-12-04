const fs = require("fs");
const path = require("path");

class HtmlContentService {
  namePath = "/data/name.txt";

  getModifiedHtmlContent() {
    const filePath = path.join(__dirname, "./index.html");

    let content = fs.readFileSync(filePath, "utf8");

    // Modify the HTML content here
    // For example, replace a placeholder with actual content
    content = content.replace(
      "{{IS_NAME_EXISTS}}",
      String(this.isNameExists())
    );
    content = content.replace(
      "{{IS_NAME_FRONTEND_GUILD}}",
      String(this.isNameFrontendGuild())
    );
    content = content.replace("{{IS_ENV}}", String(this.isEnvCool()));

    return content;
  }

  isNameExists() {
    return fs.existsSync(this.namePath);
  }

  isNameFrontendGuild() {
    return this.getNameContent() === "docker is awesome!";
  }

  isEnvCool() {
    return process.env.MY_DOCKER_ENV === "cool";
  }

  getNameContent() {
    if (!this.isNameExists()) {
      return "";
    }

    try {
      return fs.readFileSync(this.namePath, "utf8").trim();
    } catch (e) {
      return "";
    }
  }
}

module.exports = { HtmlContentService };
