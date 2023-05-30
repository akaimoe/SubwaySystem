// Auto-generated. Do not edit!

// (in-package Policy.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TagPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.StartPoint = null;
      this.EndPoint = null;
    }
    else {
      if (initObj.hasOwnProperty('StartPoint')) {
        this.StartPoint = initObj.StartPoint
      }
      else {
        this.StartPoint = 0;
      }
      if (initObj.hasOwnProperty('EndPoint')) {
        this.EndPoint = initObj.EndPoint
      }
      else {
        this.EndPoint = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TagPoint
    // Serialize message field [StartPoint]
    bufferOffset = _serializer.int32(obj.StartPoint, buffer, bufferOffset);
    // Serialize message field [EndPoint]
    bufferOffset = _serializer.int32(obj.EndPoint, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TagPoint
    let len;
    let data = new TagPoint(null);
    // Deserialize message field [StartPoint]
    data.StartPoint = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [EndPoint]
    data.EndPoint = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'Policy/TagPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3041787aa82eb0113d0b1c8705717568';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 StartPoint
    int32 EndPoint
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TagPoint(null);
    if (msg.StartPoint !== undefined) {
      resolved.StartPoint = msg.StartPoint;
    }
    else {
      resolved.StartPoint = 0
    }

    if (msg.EndPoint !== undefined) {
      resolved.EndPoint = msg.EndPoint;
    }
    else {
      resolved.EndPoint = 0
    }

    return resolved;
    }
};

module.exports = TagPoint;
