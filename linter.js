import { $lib } from "../lib.js";
import { modelDocRule } from "./rules/model-doc.js";

// Get the instance of the linter for your library
const linter = getLinter($lib);

linter.registerRule(modelDocRule);