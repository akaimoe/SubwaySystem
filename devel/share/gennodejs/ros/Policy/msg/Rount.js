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

class Rount {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.road = null;
      this.roadNo = null;
      this.len1 = null;
      this.len2 = null;
    }
    else {
      if (initObj.hasOwnProperty('road')) {
        this.road = initObj.road
      }
      else {
        this.road = [];
      }
      if (initObj.hasOwnProperty('roadNo')) {
        this.roadNo = initObj.roadNo
      }
      else {
        this.roadNo = [];
      }
      if (initObj.hasOwnProperty('len1')) {
        this.len1 = initObj.len1
      }
      else {
        this.len1 = 0;
      }
      if (initObj.hasOwnProperty('len2')) {
        this.len2 = initObj.len2
      }
      else {
        this.len2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Rount
    // Serialize message field [road]
    bufferOffset = _arraySerializer.int32(obj.road, buffer, bufferOffset, null);
    // Serialize message field [roadNo]
    bufferOffset = _arraySerializer.string(obj.roadNo, buffer, bufferOffset, null);
    // Serialize message field [len1]
    bufferOffset = _serializer.int32(obj.len1, buffer, bufferOffset);
    // Serialize message field [len2]
    bufferOffset = _serializer.int32(obj.len2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Rount
    let len;
    let data = new Rount(null);
    // Deserialize message field [road]
    data.road = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [roadNo]
    data.roadNo = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [len1]
    data.len1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [len2]
    data.len2 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.road.length;
    object.roadNo.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'Policy/Rount';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f90ce80309ad83c278c5c01cd0830b90';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] road
    string[] roadNo
    int32 len1
    int32 len2
    # vector<int32> road
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Rount(null);
    if (msg.road !== undefined) {
      resolved.road = msg.road;
    }
    else {
      resolved.road = []
    }

    if (msg.roadNo !== undefined) {
      resolved.roadNo = msg.roadNo;
    }
    else {
      resolved.roadNo = []
    }

    if (msg.len1 !== undefined) {
      resolved.len1 = msg.len1;
    }
    else {
      resolved.len1 = 0
    }

    if (msg.len2 !== undefined) {
      resolved.len2 = msg.len2;
    }
    else {
      resolved.len2 = 0
    }

    return resolved;
    }
};

module.exports = Rount;
