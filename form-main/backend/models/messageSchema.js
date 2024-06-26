import mongoose from "mongoose";
import validator from "validator";

const messageSchema = new mongoose.Schema({
  firstName: {
    type: String,
    required: true,
    minLength: [3, "contains at least 3 character"],
    regex: /^[a-zA-Z0-9\s,'-./()]*$/,
  },
  lastName: {
    type: String,
    required: true,
    minLength: [3, "contains at least 3 character"],
    regex: /^[a-zA-Z0-9\s,'-./()]*$/,
  },
  email: {
    type: String,
    required: true,
    validate: [validator.isEmail, "Please provide valid email"],
  },
  phone: {
    type: String,
    required: true,
    minLength: [10, "number contains 10 digits"],
    maxLength: [10, "number contains 10 digits"],
  },
  message: {
    type: String,
    required: true,
    minLength: [10, "contains at least 10 character"],
    regex: /^[a-zA-Z0-9\s,'-./()]*$/,
  },
});

export const Message = mongoose.model("Message", messageSchema);
