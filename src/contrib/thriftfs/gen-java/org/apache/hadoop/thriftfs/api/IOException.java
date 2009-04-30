/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package org.apache.hadoop.thriftfs.api;

import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;
import java.util.Set;
import java.util.HashSet;
import java.util.Collections;

import org.apache.thrift.*;
import org.apache.thrift.meta_data.*;
import org.apache.thrift.protocol.*;

/**
 * Generic I/O error
 */
public class IOException extends Exception implements TBase, java.io.Serializable, Cloneable {
  private static final TStruct STRUCT_DESC = new TStruct("IOException");
  private static final TField MSG_FIELD_DESC = new TField("msg", TType.STRING, (short)1);
  private static final TField STACK_FIELD_DESC = new TField("stack", TType.STRING, (short)2);
  private static final TField CLAZZ_FIELD_DESC = new TField("clazz", TType.STRING, (short)3);

  /**
   * Error message.
   */
  public String msg;
  public static final int MSG = 1;
  /**
   * Textual representation of the call stack.
   */
  public String stack;
  public static final int STACK = 2;
  /**
   * The Java class of the Exception (may be a subclass)
   */
  public String clazz;
  public static final int CLAZZ = 3;

  private final Isset __isset = new Isset();
  private static final class Isset implements java.io.Serializable {
  }

  public static final Map<Integer, FieldMetaData> metaDataMap = Collections.unmodifiableMap(new HashMap<Integer, FieldMetaData>() {{
    put(MSG, new FieldMetaData("msg", TFieldRequirementType.DEFAULT, 
        new FieldValueMetaData(TType.STRING)));
    put(STACK, new FieldMetaData("stack", TFieldRequirementType.DEFAULT, 
        new FieldValueMetaData(TType.STRING)));
    put(CLAZZ, new FieldMetaData("clazz", TFieldRequirementType.DEFAULT, 
        new FieldValueMetaData(TType.STRING)));
  }});

  static {
    FieldMetaData.addStructMetaDataMap(IOException.class, metaDataMap);
  }

  public IOException() {
  }

  public IOException(
    String msg,
    String stack,
    String clazz)
  {
    this();
    this.msg = msg;
    this.stack = stack;
    this.clazz = clazz;
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public IOException(IOException other) {
    if (other.isSetMsg()) {
      this.msg = other.msg;
    }
    if (other.isSetStack()) {
      this.stack = other.stack;
    }
    if (other.isSetClazz()) {
      this.clazz = other.clazz;
    }
  }

  @Override
  public IOException clone() {
    return new IOException(this);
  }

  /**
   * Error message.
   */
  public String getMsg() {
    return this.msg;
  }

  /**
   * Error message.
   */
  public void setMsg(String msg) {
    this.msg = msg;
  }

  public void unsetMsg() {
    this.msg = null;
  }

  // Returns true if field msg is set (has been asigned a value) and false otherwise
  public boolean isSetMsg() {
    return this.msg != null;
  }

  public void setMsgIsSet(boolean value) {
    if (!value) {
      this.msg = null;
    }
  }

  /**
   * Textual representation of the call stack.
   */
  public String getStack() {
    return this.stack;
  }

  /**
   * Textual representation of the call stack.
   */
  public void setStack(String stack) {
    this.stack = stack;
  }

  public void unsetStack() {
    this.stack = null;
  }

  // Returns true if field stack is set (has been asigned a value) and false otherwise
  public boolean isSetStack() {
    return this.stack != null;
  }

  public void setStackIsSet(boolean value) {
    if (!value) {
      this.stack = null;
    }
  }

  /**
   * The Java class of the Exception (may be a subclass)
   */
  public String getClazz() {
    return this.clazz;
  }

  /**
   * The Java class of the Exception (may be a subclass)
   */
  public void setClazz(String clazz) {
    this.clazz = clazz;
  }

  public void unsetClazz() {
    this.clazz = null;
  }

  // Returns true if field clazz is set (has been asigned a value) and false otherwise
  public boolean isSetClazz() {
    return this.clazz != null;
  }

  public void setClazzIsSet(boolean value) {
    if (!value) {
      this.clazz = null;
    }
  }

  public void setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
    case MSG:
      if (value == null) {
        unsetMsg();
      } else {
        setMsg((String)value);
      }
      break;

    case STACK:
      if (value == null) {
        unsetStack();
      } else {
        setStack((String)value);
      }
      break;

    case CLAZZ:
      if (value == null) {
        unsetClazz();
      } else {
        setClazz((String)value);
      }
      break;

    default:
      throw new IllegalArgumentException("Field " + fieldID + " doesn't exist!");
    }
  }

  public Object getFieldValue(int fieldID) {
    switch (fieldID) {
    case MSG:
      return getMsg();

    case STACK:
      return getStack();

    case CLAZZ:
      return getClazz();

    default:
      throw new IllegalArgumentException("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been asigned a value) and false otherwise
  public boolean isSet(int fieldID) {
    switch (fieldID) {
    case MSG:
      return isSetMsg();
    case STACK:
      return isSetStack();
    case CLAZZ:
      return isSetClazz();
    default:
      throw new IllegalArgumentException("Field " + fieldID + " doesn't exist!");
    }
  }

  @Override
  public boolean equals(Object that) {
    if (that == null)
      return false;
    if (that instanceof IOException)
      return this.equals((IOException)that);
    return false;
  }

  public boolean equals(IOException that) {
    if (that == null)
      return false;

    boolean this_present_msg = true && this.isSetMsg();
    boolean that_present_msg = true && that.isSetMsg();
    if (this_present_msg || that_present_msg) {
      if (!(this_present_msg && that_present_msg))
        return false;
      if (!this.msg.equals(that.msg))
        return false;
    }

    boolean this_present_stack = true && this.isSetStack();
    boolean that_present_stack = true && that.isSetStack();
    if (this_present_stack || that_present_stack) {
      if (!(this_present_stack && that_present_stack))
        return false;
      if (!this.stack.equals(that.stack))
        return false;
    }

    boolean this_present_clazz = true && this.isSetClazz();
    boolean that_present_clazz = true && that.isSetClazz();
    if (this_present_clazz || that_present_clazz) {
      if (!(this_present_clazz && that_present_clazz))
        return false;
      if (!this.clazz.equals(that.clazz))
        return false;
    }

    return true;
  }

  @Override
  public int hashCode() {
    return 0;
  }

  public void read(TProtocol iprot) throws TException {
    TField field;
    iprot.readStructBegin();
    while (true)
    {
      field = iprot.readFieldBegin();
      if (field.type == TType.STOP) { 
        break;
      }
      switch (field.id)
      {
        case MSG:
          if (field.type == TType.STRING) {
            this.msg = iprot.readString();
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case STACK:
          if (field.type == TType.STRING) {
            this.stack = iprot.readString();
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case CLAZZ:
          if (field.type == TType.STRING) {
            this.clazz = iprot.readString();
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();


    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  public void write(TProtocol oprot) throws TException {
    validate();

    oprot.writeStructBegin(STRUCT_DESC);
    if (this.msg != null) {
      oprot.writeFieldBegin(MSG_FIELD_DESC);
      oprot.writeString(this.msg);
      oprot.writeFieldEnd();
    }
    if (this.stack != null) {
      oprot.writeFieldBegin(STACK_FIELD_DESC);
      oprot.writeString(this.stack);
      oprot.writeFieldEnd();
    }
    if (this.clazz != null) {
      oprot.writeFieldBegin(CLAZZ_FIELD_DESC);
      oprot.writeString(this.clazz);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder("IOException(");
    boolean first = true;

    sb.append("msg:");
    if (this.msg == null) {
      sb.append("null");
    } else {
      sb.append(this.msg);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("stack:");
    if (this.stack == null) {
      sb.append("null");
    } else {
      sb.append(this.stack);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("clazz:");
    if (this.clazz == null) {
      sb.append("null");
    } else {
      sb.append(this.clazz);
    }
    first = false;
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws TException {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

