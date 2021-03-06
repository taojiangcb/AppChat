package protocol {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import protocol.XY_ID;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class logOut extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const XYID:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("protocol.logOut.XYID", "xYID", (1 << 3) | com.netease.protobuf.WireType.VARINT, protocol.XY_ID);

		private var XYID$field:int;

		private var hasField$0:uint = 0;

		public function clearXYID():void {
			hasField$0 &= 0xfffffffe;
			XYID$field = new int();
		}

		public function get hasXYID():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set xYID(value:int):void {
			hasField$0 |= 0x1;
			XYID$field = value;
		}

		public function get xYID():int {
			if(!hasXYID) {
				return protocol.XY_ID.XYID_LOGOUT;
			}
			return XYID$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasXYID) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, XYID$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var XYID$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (XYID$count != 0) {
						throw new flash.errors.IOError('Bad data format: logOut.xYID cannot be set twice.');
					}
					++XYID$count;
					this.xYID = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
